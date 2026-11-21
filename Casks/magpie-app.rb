cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4657"
  sha256 arm:   "8dc23b344e0e8ce1583c31373ace4a86502bc780ab2c961aae73c4e1e8e85c2d",
         intel: "8ad6f3ac9060550f6cbd7f00bcd9a4366bddf4325934e3576f1001f65835438f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
