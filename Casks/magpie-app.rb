cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3034"
  sha256 arm:   "b8782c21cf89763cb557c72bc09530c2f3e16ff953b92182a2863433da3f528b",
         intel: "25451c4f176d6bb1c73bc9520a30517bc61a6d6796ee15879dbf401fc92e1cae"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
