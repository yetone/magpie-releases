cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.950"
  sha256 arm:   "ab0744c58574ca1087fe34e685c6740236095d13cf185930f906ced5c477ea4f",
         intel: "9925472dd937dd2bf9e8395a8e7296ecdfe895a478cb1fa08f9fbb219b7a71a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
