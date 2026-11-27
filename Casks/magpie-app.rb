cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4931"
  sha256 arm:   "1f23af38e5a970e8f7928d71afd789714a5a91184e855587f7a39f721951c2ab",
         intel: "02559c83e62c023cb7ec55d77810c63867722cfa40d7e9bad8e229d16dbdefe1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
