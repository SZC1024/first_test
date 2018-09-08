package info.dao.factory;

import info.dao.dao.UserDAO;
import info.dao.dao.proxy.UserDAOProxy;

public class DAOFactory {

    public static UserDAO getUserDAOInstance() throws Exception{
        return new UserDAOProxy();
    }
}