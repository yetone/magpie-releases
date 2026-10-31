cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2377"
  sha256 arm:   "296acdbd836dce07277d40d53f226a5e30977d7a5660fde05e8103f8174c5f8b",
         intel: "a7c59404f872071375ccdf0591889452d7d55868308530714cc430bd58524f11"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
