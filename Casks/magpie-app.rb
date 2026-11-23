cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4726"
  sha256 arm:   "5da68bf5587b407e5d40773469016d14c56237d8d486d1accecd26b7ae0633ab",
         intel: "16871dfa164226887c0663bb0bd9654252f43b0f6102a799e17f817a7246f226"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
