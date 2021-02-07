

import java.util.*;

public class CreateShipmentOrderModel
{
    String shipment_number;
    String statusCode;
    String statusText;
    String statusMessage;
    String labelUrl;

    public CreateShipmentOrderModel() {
    }

    public CreateShipmentOrderModel( String shipment_number,  String statusCode,  String statusText,  String statusMessage,  String labelUrl) {
        this.shipment_number = shipment_number;
        this.statusCode = statusCode;
        this.statusText = statusText;
        this.statusMessage = statusMessage;
        this.labelUrl = labelUrl;
    }

    public String getShipment_number() {
        return this.shipment_number;
    }

    public void setShipment_number(final String shipment_number) {
        this.shipment_number = shipment_number;
    }

    public String getStatusCode() {
        return this.statusCode;
    }

    public void setStatusCode(final String statusCode) {
        this.statusCode = statusCode;
    }

    public String getStatusText() {
        return this.statusText;
    }

    public void setStatusText(final String statusText) {
        this.statusText = statusText;
    }

    public String getStatusMessage() {
        return this.statusMessage;
    }

    public void setStatusMessage(final String statusMessage) {
        this.statusMessage = statusMessage;
    }

    public String getLabelUrl() {
        return this.labelUrl;
    }

    public void setLabelUrl(final String labelUrl) {
        this.labelUrl = labelUrl;
    }

    public CreateShipmentOrderModel shipment_number(final String shipment_number) {
        this.setShipment_number(shipment_number);
        return this;
    }

    public CreateShipmentOrderModel statusCode(final String statusCode) {
        this.setStatusCode(statusCode);
        return this;
    }

    public CreateShipmentOrderModel statusText(final String statusText) {
        this.setStatusText(statusText);
        return this;
    }

    public CreateShipmentOrderModel statusMessage(final String statusMessage) {
        this.setStatusMessage(statusMessage);
        return this;
    }

    public CreateShipmentOrderModel labelUrl(final String labelUrl) {
        this.setLabelUrl(labelUrl);
        return this;
    }

    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof CreateShipmentOrderModel)) {
            return false;
        }
        final CreateShipmentOrderModel createShipmentOrderModel = (CreateShipmentOrderModel)o;
        return Objects.equals(this.shipment_number, createShipmentOrderModel.shipment_number) && Objects.equals(this.statusCode, createShipmentOrderModel.statusCode) && Objects.equals(this.statusText, createShipmentOrderModel.statusText) && Objects.equals(this.statusMessage, createShipmentOrderModel.statusMessage) && Objects.equals(this.labelUrl, createShipmentOrderModel.labelUrl);
    }

    @Override
    public int hashCode() {
        return Objects.hash(this.shipment_number, this.statusCode, this.statusText, this.statusMessage, this.labelUrl);
    }

    @Override
    public String toString() {
        return "{ shipment_number='" + this.getShipment_number() + "', statusCode='" + this.getStatusCode() + "', statusText='" + this.getStatusText() + "', statusMessage='" + this.getStatusMessage() + "', labelUrl='" + this.getLabelUrl() + "'}";
    }
}