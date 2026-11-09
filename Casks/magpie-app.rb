cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3458"
  sha256 arm:   "68fdd58d9cd59da771c1ff5886d450b24d44a4250de7c3b7d6a26cdb24380000",
         intel: "e8152894b51069b27e04a14caf05b1c527d0d71e38c1d472f97bb46863f8265e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
