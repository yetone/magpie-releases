cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1060"
  sha256 arm:   "d92c731a74234a7861fa181a2b19beee4a88e5abe52ded08d7813399a2b65733",
         intel: "0fec5f55f25a789c358b5e7ec16530570d50e7714d82421d8f7032138f205e59"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
