cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2848"
  sha256 arm:   "546c87e64a5e8cba3cfd249237b1275dfba5ec72560f8d26c9a834f489b53913",
         intel: "a236fa80ff2b189058249b433180cde2b3b5b3796c5e728200f97fabc1955007"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
