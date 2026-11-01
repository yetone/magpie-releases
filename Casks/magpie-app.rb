cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2526"
  sha256 arm:   "b9f9e7cc072d920b038df78e2eeee1064ac9864663621d73273500f8e17b91a8",
         intel: "5ac5184c06afba5ad15d98883abb7b1e96e95c92b71efc71deadcb8343b41f73"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
