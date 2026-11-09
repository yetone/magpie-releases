cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3413"
  sha256 arm:   "77ef2aa04c3d646677f6245fefa1dea377fb7ff8e204d11132ff679379545e8f",
         intel: "de468ff80d97acacb2df6a3378ca6595fd1d8f1a46e02d233cda743dea35e35e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
