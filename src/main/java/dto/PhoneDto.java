package dto;

public class PhoneDto {
    private int phoneId;
    private String phoneName;
    private String publisher;
    private int price;

    public PhoneDto() {}

    public PhoneDto(int phoneId, String phoneName, String publisher, int price) {
        this.phoneId = phoneId;
        this.phoneName = phoneName;
        this.publisher = publisher;
        this.price = price;
    }

    public int getPhoneId() {
        return phoneId;
    }

    public void setPhoneId(int phoneId) {
        this.phoneId = phoneId;
    }

    public String getPhoneName() {
        return phoneName;
    }

    public void setPhoneName(String phoneName) {
        this.phoneName = phoneName;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

//    @Override
//    public String toString() {
//        return "PhoneDto{" +
//                "phoneId=" + phoneId +
//                ", phoneName='" + phoneName + '\'' +
//                ", publisher='" + publisher + '\'' +
//                ", price=" + price +
//                '}';
//    }
}