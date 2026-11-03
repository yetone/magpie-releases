cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2871"
  sha256 arm:   "8b99cd731e768ab4fbefcf72bbf5e1458e23b287daec7c067ff5c44ac1a9e0b4",
         intel: "38b01540be7a9bde4abc26c9af775bfc499ef9c15b0ec100296cdd917c73d86c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
