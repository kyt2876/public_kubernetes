cd ~/public_kubernetes
git add -A
git commit -m "$(date) home"
git status
git push -u origin main
sleep 5
git ls-files
