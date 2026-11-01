cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2563"
  sha256 arm:   "2d832923a8702499928eb2a0c76d84f6f4e860f585f38b2ce7b0383a42cf1d9e",
         intel: "b38dd4273d503ae203fbd51b65b862cbd98c8912aacaa352d8dd1036c9ab1142"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
