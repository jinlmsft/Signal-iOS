//
//  Copyright (c) 2019 Open Whisper Systems. All rights reserved.
//

import Foundation
import GRDBCipher
import SignalCoreKit

// NOTE: This file is generated by /Scripts/sds_codegen/sds_generate.py.
// Do not manually edit it, instead run `sds_codegen.sh`.

// MARK: - Typed Convenience Methods

@objc
public extension TSMessage {
    // NOTE: This method will fail if the object has unexpected type.
    class func anyFetchMessage(uniqueId: String,
                                   transaction: SDSAnyReadTransaction) -> TSMessage? {
        assert(uniqueId.count > 0)

        guard let object = anyFetch(uniqueId: uniqueId,
                                    transaction: transaction) else {
                                        return nil
        }
        guard let instance = object as? TSMessage else {
            owsFailDebug("Object has unexpected type: \(type(of: object))")
            return nil
        }
        return instance
    }

    // NOTE: This method will fail if the object has unexpected type.
    func anyUpdateMessage(transaction: SDSAnyWriteTransaction, block: (TSMessage) -> Void) {
        anyUpdate(transaction: transaction) { (object) in
            guard let instance = object as? TSMessage else {
                owsFailDebug("Object has unexpected type: \(type(of: object))")
                return
            }
            block(instance)
        }
    }
}

// MARK: - SDSSerializer

// The SDSSerializer protocol specifies how to insert and update the
// row that corresponds to this model.
class TSMessageSerializer: SDSSerializer {

    private let model: TSMessage
    public required init(model: TSMessage) {
        self.model = model
    }

    // MARK: - Record

    func asRecord() throws -> SDSRecord {
        let id: Int64? = nil

        let recordType: SDSRecordType = .message
        guard let uniqueId: String = model.uniqueId else {
            owsFailDebug("Missing uniqueId.")
            throw SDSError.missingRequiredField
        }

        // Base class properties
        let receivedAtTimestamp: UInt64 = model.receivedAtTimestamp
        let timestamp: UInt64 = model.timestamp
        let threadUniqueId: String = model.uniqueThreadId

        // Subclass properties
        let attachmentFilenameMap: Data? = nil
        let attachmentIds: Data? = optionalArchive(model.attachmentIds)
        let authorId: String? = nil
        let authorPhoneNumber: String? = nil
        let authorUUID: String? = nil
        let beforeInteractionId: String? = nil
        let body: String? = model.body
        let callSchemaVersion: UInt? = nil
        let callType: RPRecentCallType? = nil
        let configurationDurationSeconds: UInt32? = nil
        let configurationIsEnabled: Bool? = nil
        let contactId: String? = nil
        let contactShare: Data? = optionalArchive(model.contactShare)
        let createdByRemoteName: String? = nil
        let createdInExistingGroup: Bool? = nil
        let customMessage: String? = nil
        let envelopeData: Data? = nil
        let errorMessageSchemaVersion: UInt? = nil
        let errorType: TSErrorMessageType? = nil
        let expireStartedAt: UInt64? = model.expireStartedAt
        let expiresAt: UInt64? = model.expiresAt
        let expiresInSeconds: UInt32? = model.expiresInSeconds
        let groupMetaMessage: TSGroupMetaMessage? = nil
        let hasAddToContactsOffer: Bool? = nil
        let hasAddToProfileWhitelistOffer: Bool? = nil
        let hasBlockOffer: Bool? = nil
        let hasLegacyMessageState: Bool? = nil
        let hasSyncedTranscript: Bool? = nil
        let incomingMessageSchemaVersion: UInt? = nil
        let infoMessageSchemaVersion: UInt? = nil
        let isFromLinkedDevice: Bool? = nil
        let isLocalChange: Bool? = nil
        let isVoiceMessage: Bool? = nil
        let legacyMessageState: TSOutgoingMessageState? = nil
        let legacyWasDelivered: Bool? = nil
        let linkPreview: Data? = optionalArchive(model.linkPreview)
        let messageId: String? = nil
        let messageSticker: Data? = optionalArchive(model.messageSticker)
        let messageType: TSInfoMessageType? = nil
        let mostRecentFailureText: String? = nil
        let outgoingMessageSchemaVersion: UInt? = nil
        let perMessageExpirationDurationSeconds: UInt32? = model.perMessageExpirationDurationSeconds
        let perMessageExpirationHasExpired: Bool? = model.perMessageExpirationHasExpired
        let perMessageExpireStartedAt: UInt64? = model.perMessageExpireStartedAt
        let preKeyBundle: Data? = nil
        let protocolVersion: UInt? = nil
        let quotedMessage: Data? = optionalArchive(model.quotedMessage)
        let read: Bool? = nil
        let recipientAddress: Data? = nil
        let recipientAddressStates: Data? = nil
        let schemaVersion: UInt? = model.schemaVersion
        let sender: Data? = nil
        let serverTimestamp: UInt64? = nil
        let sourceDeviceId: UInt32? = nil
        let storedMessageState: TSOutgoingMessageState? = nil
        let unknownProtocolVersionMessageSchemaVersion: UInt? = nil
        let unregisteredAddress: Data? = nil
        let verificationState: OWSVerificationState? = nil
        let wasReceivedByUD: Bool? = nil

        return InteractionRecord(id: id, recordType: recordType, uniqueId: uniqueId, receivedAtTimestamp: receivedAtTimestamp, timestamp: timestamp, threadUniqueId: threadUniqueId, attachmentFilenameMap: attachmentFilenameMap, attachmentIds: attachmentIds, authorId: authorId, authorPhoneNumber: authorPhoneNumber, authorUUID: authorUUID, beforeInteractionId: beforeInteractionId, body: body, callSchemaVersion: callSchemaVersion, callType: callType, configurationDurationSeconds: configurationDurationSeconds, configurationIsEnabled: configurationIsEnabled, contactId: contactId, contactShare: contactShare, createdByRemoteName: createdByRemoteName, createdInExistingGroup: createdInExistingGroup, customMessage: customMessage, envelopeData: envelopeData, errorMessageSchemaVersion: errorMessageSchemaVersion, errorType: errorType, expireStartedAt: expireStartedAt, expiresAt: expiresAt, expiresInSeconds: expiresInSeconds, groupMetaMessage: groupMetaMessage, hasAddToContactsOffer: hasAddToContactsOffer, hasAddToProfileWhitelistOffer: hasAddToProfileWhitelistOffer, hasBlockOffer: hasBlockOffer, hasLegacyMessageState: hasLegacyMessageState, hasSyncedTranscript: hasSyncedTranscript, incomingMessageSchemaVersion: incomingMessageSchemaVersion, infoMessageSchemaVersion: infoMessageSchemaVersion, isFromLinkedDevice: isFromLinkedDevice, isLocalChange: isLocalChange, isVoiceMessage: isVoiceMessage, legacyMessageState: legacyMessageState, legacyWasDelivered: legacyWasDelivered, linkPreview: linkPreview, messageId: messageId, messageSticker: messageSticker, messageType: messageType, mostRecentFailureText: mostRecentFailureText, outgoingMessageSchemaVersion: outgoingMessageSchemaVersion, perMessageExpirationDurationSeconds: perMessageExpirationDurationSeconds, perMessageExpirationHasExpired: perMessageExpirationHasExpired, perMessageExpireStartedAt: perMessageExpireStartedAt, preKeyBundle: preKeyBundle, protocolVersion: protocolVersion, quotedMessage: quotedMessage, read: read, recipientAddress: recipientAddress, recipientAddressStates: recipientAddressStates, schemaVersion: schemaVersion, sender: sender, serverTimestamp: serverTimestamp, sourceDeviceId: sourceDeviceId, storedMessageState: storedMessageState, unknownProtocolVersionMessageSchemaVersion: unknownProtocolVersionMessageSchemaVersion, unregisteredAddress: unregisteredAddress, verificationState: verificationState, wasReceivedByUD: wasReceivedByUD)
    }
}
