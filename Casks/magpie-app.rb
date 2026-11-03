cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2805"
  sha256 arm:   "50c839b212dc9ce8e961706c0a544e3f3e2c2fb704f234d21a0aee24fe8a6f62",
         intel: "6021007f271eec7fa9bcb330697a1bca94950125ff3a2874d46851c2cc553a31"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
