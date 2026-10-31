cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2324"
  sha256 arm:   "02e6e466e23030b25d7c382ea9e922fa937f92a6914414b8bde0121ad8dbcb98",
         intel: "c70286559d130646a4af2382f8755ac5d918c46f3038982271d9748f60ef7ffc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
