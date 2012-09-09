package readersbooks

class Follow {

	Reader follower
	Reader leader
	
    static constraints = {
    }

		String toString(){
		follower.userName + " *follow to* " + leader.userName
	}
	
	static Follow link(Reader follower, Reader leader) {
		
		Follow f = Follow.findByFollowerAndLeader(follower, leader) 
		
		if (!f) {
			f = new Follow()
			follower.addToFollowers(f) 
			leader.addToLeaders(f)
			f.save()
		}
		return f
	}

	static void unlink(Reader follower, Reader leader) {
		Follow f = Follow.findByFollowerAndLeader(follower, leader) 
		if (f) {
			follower.removeFromFollowers(f) 
			leader.removeFromLeaders(f) 
			f.delete()
		}
	}

	
}
