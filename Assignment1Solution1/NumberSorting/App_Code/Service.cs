using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
	public string sort(string s) {
		try { 
		List<int> tempList = new List<int>();
		tempList = s.Split(',').Select(int.Parse).ToList();
		tempList.Sort();
        return string.Join(",", tempList);
        // string.Join(";", s.Split(',').OrderBy(x => x).ToList());
		}catch (Exception ex)
		{
			return "Please Enter Valid Input array like 3,1,2 !!";
		}

    }
}
