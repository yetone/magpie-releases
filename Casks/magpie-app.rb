cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3023"
  sha256 arm:   "14a8dc8725258034b3eb5152b34dd6480d7a60188841f2b2d393ee17cdb3278f",
         intel: "4200f1290cbad4f1f0100055cdcbd0df01b797e00c100b43da275d643ab8490a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
