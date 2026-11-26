cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4882"
  sha256 arm:   "83555d9ad6922392405b8d08165cfdeecea9e2e72b71423ccb4c2bde64142282",
         intel: "5db8d72cf82d55b2cb51ffe51dc03d0ba9a2cfe08247ecd6514d2a8579e72f31"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
