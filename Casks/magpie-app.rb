cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2762"
  sha256 arm:   "39c0bc358add2f04ddf9925b880a59a56a5dc2379163f50f6e21ac0374f084d2",
         intel: "77cbc4dc5b28e68be6ca093862e43c9dce729bcea554f9ea238721d385278010"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
