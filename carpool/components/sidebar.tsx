import { Mountain, PlusCircle, Search, User } from "lucide-react";

const Sidebar = () => {
  return (
    <aside className="w-1/4 rounded-lg bg-white p-4 shadow-lg">
      <h2 className="text-xl font-semibold">Kam greš danes?</h2>
      <ul className="mt-4 space-y-4 text-lg">
        <li className="flex items-center space-x-2 font-semibold text-orange-500">
          <Search />
          <span> Išči prevoz</span>
        </li>
        <li className="flex items-center space-x-2">
          <Mountain />
          <span> Gore in hribi</span>
        </li>
        <li className="flex items-center space-x-2">
          <PlusCircle />
          <span> Moji prevozi</span>
        </li>
        <li className="flex items-center space-x-2">
          <User />
          <span> Moj profil</span>
        </li>
      </ul>
      <button className="mt-8 flex w-full items-center justify-center space-x-2 rounded-full bg-orange-500 py-2 font-semibold text-white">
        <PlusCircle />
        <span>Dodaj prevoz</span>
      </button>
    </aside>
  );
};

export default Sidebar;
