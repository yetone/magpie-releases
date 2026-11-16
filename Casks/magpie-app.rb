cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4338"
  sha256 arm:   "c78d40543628e2fbbf19e30e5a525579d6da6409dbb1ad29bfcb45632f67b81f",
         intel: "59818950788dabe950ba087ccd093180204b9716ee3d8aa6bcba04c3c0643998"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
