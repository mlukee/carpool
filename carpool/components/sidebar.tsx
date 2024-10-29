import { Search, PlusCircle, Mountain, User } from "lucide-react";

const Sidebar = () => {
  return (
    <aside className="w-1/4 bg-white rounded-lg p-4 shadow-lg">
      <h2 className="text-xl font-semibold">Kam greš danes?</h2>
      <ul className="space-y-4 mt-4 text-lg">
        <li className="flex items-center space-x-2 text-orange-500 font-semibold">
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
      <button className="mt-8 bg-orange-500 text-white font-semibold w-full py-2 rounded-full flex items-center justify-center space-x-2">
        <PlusCircle />
        <span>Dodaj prevoz</span>
      </button>
    </aside>
  );
};

export default Sidebar;
