<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<applicationModel>
    <name>Application Model</name>
    <className>ApplicationModel</className>
    <objects>
        <object type="Window" technology="WPF">
            <name>Micro Focus MyFlight Sample Application</name>
            <codeName>MicroFocusMyFlightSampleApplicationWindow</codeName>
            <description></description>
            <identification>
                <properties>
                    <property name="WindowTitleRegExp" type="string" isRegExp="false">Micro Focus MyFlight Sample Application</property>
                    <property name="ObjectName" type="string" isRegExp="false">Micro Focus MyFlight Sample Application</property>
                    <property name="FullType" type="string" isRegExp="false">window</property>
                </properties>
            </identification>
            <children>
                <object type="EditField" technology="WPF">
                    <name>UserName</name>
                    <codeName>UserNameEditField</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="ObjectName" type="string" isRegExp="false">agentName</property>
                        </properties>
                    </identification>
                </object>
                <object type="EditField" technology="WPF">
                    <name>Password</name>
                    <codeName>PasswordEditField</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="ObjectName" type="string" isRegExp="false">password</property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="WPF">
                    <name>OK</name>
                    <codeName>OKButton</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="ObjectName" type="string" isRegExp="false">okButton</property>
                            <property name="Text" type="string" isRegExp="false">OK</property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="WPF">
                    <name>FIND FLIGHTS</name>
                    <codeName>FINDFLIGHTSButton</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="ObjectName" type="string" isRegExp="false">FIND FLIGHTS</property>
                            <property name="Text" type="string" isRegExp="false">FIND FLIGHTS</property>
                        </properties>
                    </identification>
                </object>
                <object type="Table" technology="WPF">
                    <name>flightsDataGrid</name>
                    <codeName>FlightsDataGridTable</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="ObjectName" type="string" isRegExp="false">flightsDataGrid</property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="WPF">
                    <name>SELECT FLIGHT</name>
                    <codeName>SELECTFLIGHTButton</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="ObjectName" type="string" isRegExp="false">selectFlightBtn</property>
                            <property name="Text" type="string" isRegExp="false">SELECT FLIGHT</property>
                        </properties>
                    </identification>
                </object>
                <object type="EditField" technology="WPF">
                    <name>passengerName</name>
                    <codeName>PassengerNameEditField</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="ObjectName" type="string" isRegExp="false">passengerName</property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="WPF">
                    <name>ORDER</name>
                    <codeName>ORDERButton</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="ObjectName" type="string" isRegExp="false">orderBtn</property>
                            <property name="Text" type="string" isRegExp="false">ORDER</property>
                        </properties>
                    </identification>
                </object>
                <object type="UiObject" technology="WPF">
                    <name>Order completed</name>
                    <codeName>OrderCompletedUiObject</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="ObjectName" type="string" isRegExp="false">orderCompleted</property>
                        </properties>
                    </identification>
                </object>
                <object type="Button" technology="WPF">
                    <name>Cancel</name>
                    <codeName>CancelButton</codeName>
                    <description></description>
                    <identification>
                        <properties>
                            <property name="ObjectName" type="string" isRegExp="false">Cancel</property>
                            <property name="Text" type="string" isRegExp="false">Cancel</property>
                        </properties>
                    </identification>
                </object>
            </children>
        </object>
    </objects>
</applicationModel>
