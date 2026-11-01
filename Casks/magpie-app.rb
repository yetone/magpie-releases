cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2509"
  sha256 arm:   "6add9ac28da6957de5c0e2696fa05a12db734c298c8cec4003dccc65d7732eae",
         intel: "16251df820c2c09a81a751db7cb0592e61a7f7d0e2ba7410db17fad5824c09b6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
