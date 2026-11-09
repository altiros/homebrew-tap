cask "crowsnest" do
  version "0.3.0"
  sha256 "ef317bc7fd55e5edf65952087901cefd3587bd3fdd9f997acfa39e2046c936b5"

  url "https://github.com/altiros/crowsnest/releases/download/v#{version}/Crowsnest-#{version}.zip"
  name "Crowsnest"
  desc "Native Kubernetes management app"
  homepage "https://www.altiros.com/crowsnest/"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: :sequoia

  app "Crowsnest.app"

  zap trash: [
    "~/Library/Preferences/com.altiros.Crowsnest.plist",
    "~/Library/Saved Application State/com.altiros.Crowsnest.savedState",
  ]
end
