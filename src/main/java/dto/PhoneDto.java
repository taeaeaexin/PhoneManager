package dto;
public class PhoneDto {

    private int PhoneId;
    private String PhoneName;
    private String publisher;
    private int price;

    public PhoneDto() {}
    public PhoneDto(int PhoneId, String PhoneName, String publisher, int price) {
        super();
        this.PhoneId = PhoneId;
        this.PhoneName = PhoneName;
        this.publisher = publisher;
        this.price = price;
    }

    public int getPhoneId() {
        return PhoneId;
    }
    public void setPhoneId(int PhoneId) {
        this.PhoneId = PhoneId;
    }
    public String getPhoneName() {
        return PhoneName;
    }
    public void setPhoneName(String PhoneName) {
        this.PhoneName = PhoneName;
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
}