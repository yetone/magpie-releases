cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2738"
  sha256 arm:   "e5797b46572d98077589e3c6a18907683f32d47ab72cb074a534d75ab30987de",
         intel: "d6d80db3db1f60951ecfdb44375e0f8f913d83374c1a646589e376ce78fa1cf2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
