cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4436"
  sha256 arm:   "9dd2e72e9c7f7adec32a5ccd615bc3245c897254015e265cab3318751b09bf5f",
         intel: "6841dc4846336c35a3cce881fc7a5a2cc497ef847916a094407f7b1ccf24fda4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
