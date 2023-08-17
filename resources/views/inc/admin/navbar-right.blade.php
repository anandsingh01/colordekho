<ul class="navbar-nav">
    <li>

  <a href="{{ route('logout') }}"  onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();"
     class="mega-menu" title="Sign Out"><i class="zmdi zmdi-power"></i>

  </a>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
            @csrf
        </form>
    </li>
</ul>
