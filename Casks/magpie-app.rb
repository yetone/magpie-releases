cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3277"
  sha256 arm:   "bb413c324b952e23f810508911142f556c21fad967570efe87d87acf39767308",
         intel: "e400e3a1841d9812b95abb0911a2b6acb839e51cfbb8d92c1916e1dfee393ea3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
