cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4610"
  sha256 arm:   "9a7858ccacf0997666b54bd23ea4a3d7a65a4880ecec4702cab6930fd4c61459",
         intel: "2bcf66aa3d9100a5d2ba652a3a01ba9b3c05b8517dfbb02ea9fcdb2d19040225"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
