cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.976"
  sha256 arm:   "bee742c9bdadb2a8d25c5264da652abdac266a4454187db64c05ee06800d4282",
         intel: "ee3b31dc67a4e563bad290912218a2e1c39a349561e6f9877f3f69f41dc455aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
