cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4564"
  sha256 arm:   "cda5014aa6a884707bbd6494d1312e27b60ea4333480f1b02aaa76ced874e078",
         intel: "235ea943e19d8c62f34472cdf979e61551ae3beafcfa40f07576fa6039692264"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
