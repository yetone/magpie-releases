cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1887"
  sha256 arm:   "c393f8226992fcaa2fe2ed98aade2ff39395a6e31c8c6fb93cf9184b7da033e0",
         intel: "91922eaef2a576b7b274da8d8a4fb67f1e5802e875bc1e153266e83adf4d158b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
