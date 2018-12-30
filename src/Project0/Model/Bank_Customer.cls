public class Bank_Customer{

    public String msg = 'Please ensure all Authorized Users are 18 or older';
    public Date birthDate;
    public String AuthorizedUser1_First_Name;
    public String AuthorizedUser1_Last_Name;
    public String AuthorizedUser2_First_Name;
    public String AuthorizedUser2_Last_Name;

    private static Date calculateAge(Date birthDate){
        return TEXT(DATE(YEAR(TODAY()))-DATE(YEAR(birthDate)));
    }

    public String verifyAge(Date birthDate){
        if(calculateAge(birthDate) > 18 ? Account.authorizedUser()=true : System.error(msg))
        }
}