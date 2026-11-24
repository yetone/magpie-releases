cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4772"
  sha256 arm:   "5ca16ee686ba5989e5661adfdedd0bded77fb53b8d9741ebc8e08dbd893089d8",
         intel: "12b4b3a869d8d4215158731dd0122ab105a9dec5b44818ee87addd3a8c14df08"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
