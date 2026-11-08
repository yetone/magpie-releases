cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3321"
  sha256 arm:   "6030a5e587d13d185dd5b666c85cb250989c4e3d06f06c5a2394392681cf4e80",
         intel: "1f263fe37394299aef6d4f7dc61fbe8b24808572106a853404673b1020babc8d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
