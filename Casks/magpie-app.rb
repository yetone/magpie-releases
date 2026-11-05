cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3032"
  sha256 arm:   "b8235934edf33d095836a3c5095409b28f82aad1ef5daa83587f7bf122d8399e",
         intel: "bcba53dd8dedf4c1b74e4946a94afe4e8170518baeeff0925adffe2e23d07849"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
