package springboot.Service;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import org.slf4j.Logger;


import springboot.Repository.UserRepository;
import springboot.model.User;

@Service
public class UserServiceImpl  implements UserService{
	
	private static final Logger logger=LoggerFactory.getLogger(UserServiceImpl.class);
	
	@Autowired
	private UserRepository userRepository;
	
	@Override
	public User saveUser(User user)
	{
		User useVal=null;
		try
		{
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            user.setPassword(passwordEncoder.encode(user.getPassword()));
			useVal=userRepository.save(user);
		}catch(Exception e)
		{
			logger.error(e.getMessage());
		}
		return useVal;
	}
	

}
