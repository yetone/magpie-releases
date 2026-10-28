cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1962"
  sha256 arm:   "5449938e693139de6c51ee2a29cfe1155e5f042f19bac63a62e53768c777c88e",
         intel: "137d3db2b1505f04d314efad0268c120f129d3ac1a3b582a1681bf72c07c34bb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
