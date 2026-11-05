cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3048"
  sha256 arm:   "92ede00d47971b85dc8474fe54cb5536d4fcc76aa93b4e4940097662233d6fab",
         intel: "45f630c77b98d4aed08c5e89ec99b069c26a7bc3549f2bc2957c239b10088b63"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
