import { TopbarWrapper, TopbarText, LeftRoutes } from './Topbar.styled';
import { NavLink } from 'react-router-dom';

function Topbar() {
  return (
    <div className='topbar'>
        <TopbarWrapper>
            <TopbarText>
                <div className='topbar-left'>
                    <LeftRoutes>
                        <NavLink to="/">Logo</NavLink>
                    </LeftRoutes>
                    <LeftRoutes>
                        <NavLink to="/home">Home</NavLink>
                    </LeftRoutes>
                    <LeftRoutes>
                        <NavLink to="/create">Create</NavLink>
                    </LeftRoutes>
                    <LeftRoutes>
                        <NavLink to="/review">Review</NavLink>
                    </LeftRoutes>           
                </div>
                <div className='topbar-right'>
                    Right
                </div>
            </TopbarText>
        </TopbarWrapper>
    </div>

)}

export default Topbar;
