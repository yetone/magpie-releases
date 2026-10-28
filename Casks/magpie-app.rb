cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1928"
  sha256 arm:   "9fd57ccd21efa002c3f16c3aace718aade8e5b559a1a9524e6d95b7ef938cd7f",
         intel: "2aa4a230faf381077848b0e296c1b70f1e401dde6b79daa245daa01f38a6d749"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
