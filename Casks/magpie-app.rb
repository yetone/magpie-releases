cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4141"
  sha256 arm:   "1e79e75c5e0d145a809be7dfa3a8d40245c572da6ac75ba920a29cb2af2804e3",
         intel: "54e6d0ad8f54b3e7327995abf9356b46d49cc435ea41619b256ca8b8535583a6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
