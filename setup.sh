grep -q "gitGuard" ~/.bashrc || { echo "Modifying .bashrc" && echo -e "\n. ~/.gitGuard/git.sh\n" >> ~/.bashrc; }
grep -q "gitCommand" ~/.multigit.conf || { echo "Modifying .multigit.conf" && echo -e "\ngitCommand = . ~/.gitGuard/git.sh && git\n" >> ~/.multigit.conf; }
cp multigit $(which multigit)
