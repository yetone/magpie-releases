cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1115"
  sha256 arm:   "3175f870cdb97e7f06929422c41c484959c8cacecc82781a9994936e0a0e369b",
         intel: "7a9e047edff03de35388d5333076ede6a1d0b8e8e571af61671e1210e8299c21"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
