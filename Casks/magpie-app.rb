cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3827"
  sha256 arm:   "b11a68da9c825863ca8f00a52f7405ac2acd3940d446ce8e787542b6aa2e915f",
         intel: "f7fdace9952c721a4f9d8240a240be87c03caa5e9da31a3c58749228e0caec20"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
