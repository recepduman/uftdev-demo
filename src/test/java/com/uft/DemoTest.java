package com.uft;

import com.hp.lft.report.CaptureLevel;
import com.hp.lft.report.ModifiableReportConfiguration;
import com.hp.lft.report.Reporter;
import com.hp.lft.report.Status;
import com.hp.lft.sdk.Aut;
import com.hp.lft.sdk.Desktop;
import com.hp.lft.sdk.ModifiableSDKConfiguration;
import com.hp.lft.sdk.SDK;
import org.testng.annotations.Test;

import java.awt.image.RenderedImage;
import java.io.IOException;
import java.net.URI;

public class DemoTest {


    @Test
    public void test() throws Exception {

            closeApp("FlightsGUI.exe");

            ModifiableSDKConfiguration config = new ModifiableSDKConfiguration();
            ModifiableReportConfiguration reportConfiguration = new ModifiableReportConfiguration();
            config.setServerAddress(new URI("ws://localhost:5095"));
            reportConfiguration.setSnapshotsLevel(CaptureLevel.All);
            SDK.init(config);
            Reporter.init(reportConfiguration);
            Aut flightApp = Desktop.launchAut("C:\\Program Files (x86)\\Micro Focus\\Unified Functional Testing\\samples\\Flights Application\\FlightsGUI.exe");




            ApplicationModel appModel = new ApplicationModel();
            appModel.SAPEasyAccessWindow().OKCode().setValue("VA01");





            appModel.MicroFocusMyFlightSampleApplicationWindow().UserNameEditField().setText("john");
            appModel.MicroFocusMyFlightSampleApplicationWindow().PasswordEditField().setText("hp");
            appModel.MicroFocusMyFlightSampleApplicationWindow().OKButton().click();

            appModel.MicroFocusMyFlightSampleApplicationWindow().FINDFLIGHTSButton().click();

            appModel.MicroFocusMyFlightSampleApplicationWindow().FlightsDataGridTable().selectRow(1);
            appModel.MicroFocusMyFlightSampleApplicationWindow().SELECTFLIGHTButton().click();
            appModel.MicroFocusMyFlightSampleApplicationWindow().PassengerNameEditField().setText("Test");
            appModel.MicroFocusMyFlightSampleApplicationWindow().ORDERButton().click();


            if (appModel.MicroFocusMyFlightSampleApplicationWindow().OrderCompletedUiObject().exists(15)) {
                Thread.sleep(2000);
                RenderedImage screen = appModel.MicroFocusMyFlightSampleApplicationWindow().getSnapshot();
                Reporter.reportEvent("Order", "Order placed successfully! " + appModel.MicroFocusMyFlightSampleApplicationWindow().OrderCompletedUiObject().getName(), Status.Passed, screen);
            } else {
                RenderedImage screen = appModel.MicroFocusMyFlightSampleApplicationWindow().getSnapshot();
                Reporter.reportEvent("Order", "There is a problem. Order could not be created", Status.Failed, screen);
                closeApp("FlightsGUI.exe");
                throw new RuntimeException("There is a problem. Order could not be created");
            }









            //Generate the report and cleanup the SDK usage.
            Reporter.generateReport();

            closeApp("FlightsGUI.exe");
            SDK.cleanup();





    }

    public void closeApp(String appName) throws Exception {
        Runtime.getRuntime().exec("taskkill /F /IM " + appName);
    }
}
