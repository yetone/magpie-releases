cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3252"
  sha256 arm:   "02b833806a95951454d7d9aecccd66f839639c3510454f2d4644d9896a1bdb84",
         intel: "7efb8eae6d536d20daa1c180a9de3463de09697faabbd1ea4668c351a3eccf19"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
