cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2835"
  sha256 arm:   "a6f8c1e2efbde1a6d68da8c480c1f8e088cfd58bd952980bd7b3063c6e1a89a2",
         intel: "748e19cd8fbdcf1da8fe61464ca8ad5513be16500ad9e816548740957da8669f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
