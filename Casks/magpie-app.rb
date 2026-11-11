cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3784"
  sha256 arm:   "c471af8fd353bd2893e618e6a61189d9d8a87bf8a0ad9b256e4ad32f6d8c13c9",
         intel: "bd48bb1e949aff807dee31d6fec0157489363688bab110a71195c8db08b96001"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
