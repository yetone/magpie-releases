cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1019"
  sha256 arm:   "1fb67f007ba64aeb1b887aec011b9c53913839b104180b0b2e37eaf8c16d3fc8",
         intel: "6440da01e538d23b43a92a7e78c49a32ca84cee6a1465994521590639ce64bd1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
