package com.gn.spring.member.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.gn.spring.member.domain.Member;
import com.gn.spring.member.domain.MemberDto;
import com.gn.spring.member.repository.MemberRepository;

@Service
public class MemberService {
	
	private final PasswordEncoder passwordEncoder;
	private final MemberRepository memberRepository;
	
	public MemberService(PasswordEncoder passwordEncoder,
			MemberRepository memberRepository) {
		this.passwordEncoder = passwordEncoder;
		this.memberRepository = memberRepository;
	}
	
	public List<MemberDto> findAllForChat(String memId){
		List<Member> memberList = memberRepository.findAllForChat(memId);
		List<MemberDto> memberDtoList = new ArrayList<MemberDto>();
		for(Member m : memberList) {
			MemberDto dto = new MemberDto().toDto(m);
			memberDtoList.add(dto);
		}
		return memberDtoList;
	}
	
	
	public int createMember(MemberDto dto) {
		// mem_id, mem_pw, mem_name, mem_auth
		int result = -1;
		try {
			dto.setMem_pw(passwordEncoder.encode(dto.getMem_pw()));
			Member member = dto.toEntity();
			memberRepository.save(member);
			result = 1; 
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
