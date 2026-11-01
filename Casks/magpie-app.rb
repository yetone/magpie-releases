cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2606"
  sha256 arm:   "baae250b6265ca15894ba4d925a4eb5a5d949b94f1bbc8669e07499aefa857eb",
         intel: "148529df6511cf10ed0839d915a9d55e17819c9cf8db3a327b45b9737554d5af"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
