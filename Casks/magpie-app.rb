cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3120"
  sha256 arm:   "94d587c223fd069cc87111fbd110b82b1d61d93972a9efdaa2d1c4b7e53efc7b",
         intel: "9c1d83baf91c8ec3d67ba1226414108d6362f60cfa796b5686e5f965c8b2d83c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
