export class Users 
{
    public Id;
    public name;
    public pwd;
    public email;
    
    constructor(Id: any,name: any,pwd: any,email: any) 
    {
        this.Id = Id;
        this.name = name;
        this.pwd = pwd;
        this.email = email;
    }
}